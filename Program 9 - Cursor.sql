create table customer (
    id number,
    name varchar2(20),
    address varchar2(30),
    salary number
);

insert into customer values (1, 'savitha', 'pondy', 20000);
insert into customer values (2, 'priya', 'villupuram', 25000);
insert into customer values (3, 'gaja', 'chennai', 30000);

select * from customer;

-- implicit cursor

declare
    total_rows number;
begin
    update customer
    set salary = salary + 500;

    if sql%notfound then
        dbms_output.put_line('no customers selected');
    else
        total_rows := sql%rowcount;
        dbms_output.put_line(total_rows || ' customers selected');
    end if;
end;


-- explicit cursor

declare
    c_id customer.id%type;
    c_name customer.name%type;
    c_addr customer.address%type;

    cursor c_customers is
        select id, name, address from customer;
begin
    open c_customers;

    loop
        fetch c_customers into c_id, c_name, c_addr;

        exit when c_customers%notfound;

        dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
    end loop;

    close c_customers;
end;
